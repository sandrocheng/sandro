.class public Lcom/keniu/security/traffic/TrafficMainActivity;
.super Landroid/app/Activity;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/keniu/security/monitor/b;


# static fields
.field public static final a:Ljava/lang/String; = "extra_num"

.field private static final m:I = 0x16

.field private static final n:I = 0x17

.field private static final o:I = 0x18


# instance fields
.field private A:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

.field private B:Landroid/widget/ImageView;

.field private C:Lcom/keniu/security/traffic/br;

.field private D:Landroid/os/Handler;

.field private E:Landroid/os/Handler;

.field private F:Ljava/lang/Runnable;

.field private b:Z

.field private final c:I

.field private final d:I

.field private e:Lcom/keniu/security/util/ap;

.field private f:Lcom/keniu/security/util/ap;

.field private g:Lcom/keniu/security/util/ap;

.field private h:Lcom/keniu/security/util/ap;

.field private i:J

.field private j:Lorg/achartengine/b;

.field private k:Landroid/widget/PopupWindow;

.field private l:Lcom/keniu/security/traffic/bq;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Landroid/widget/RadioGroup;

.field private z:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->b:Z

    .line 70
    iput v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->c:I

    .line 71
    const/16 v0, 0x120

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->d:I

    .line 72
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    .line 73
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    .line 74
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    .line 75
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    .line 79
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->s:Z

    .line 89
    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->t:Z

    .line 90
    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->u:Z

    .line 91
    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->v:Z

    .line 92
    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->w:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    .line 125
    new-instance v0, Lcom/keniu/security/traffic/ay;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ay;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    .line 452
    new-instance v0, Lcom/keniu/security/traffic/bl;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/bl;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->E:Landroid/os/Handler;

    .line 842
    new-instance v0, Lcom/keniu/security/traffic/bc;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/bc;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->F:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private a([J)Lorg/achartengine/b/c;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x1f

    const/4 v3, 0x0

    .line 861
    new-instance v0, Lorg/achartengine/b/c;

    invoke-direct {v0}, Lorg/achartengine/b/c;-><init>()V

    .line 863
    new-instance v1, Lorg/achartengine/b/a;

    const v2, 0x7f0b034f

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/achartengine/b/a;-><init>(Ljava/lang/String;)V

    .line 868
    if-eqz p1, :cond_0

    move v2, v3

    .line 870
    :goto_0
    if-ge v2, v5, :cond_1

    .line 871
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/achartengine/b/a;->a(D)V

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 875
    :goto_1
    if-ge v2, v5, :cond_1

    .line 876
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/achartengine/b/a;->a(D)V

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 880
    :cond_1
    invoke-virtual {v1}, Lorg/achartengine/b/a;->a()Lorg/achartengine/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/achartengine/b/c;->a(Lorg/achartengine/b/d;)V

    .line 882
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 366
    const v0, 0x7f0803b1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    .line 368
    const v0, 0x7f0803b4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    .line 370
    const v0, 0x7f0803b6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    .line 371
    sget-boolean v0, Lcom/keniu/security/traffic/at;->b:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    const v1, -0x1c57d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0b02a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 386
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 388
    new-instance v0, Lcom/keniu/security/traffic/bk;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/bk;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 395
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1444
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1445
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 1446
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    .line 1447
    invoke-static {}, Lcom/keniu/security/traffic/q;->b()Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 1448
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1449
    aget-object v3, v0, v2

    .line 1450
    iget v4, v3, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1451
    invoke-static {}, Lcom/keniu/security/traffic/q;->c()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v4, :cond_0

    .line 1455
    iget v4, v3, Lcom/keniu/security/traffic/f;->a:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/keniu/security/traffic/q;->b(IZ)V

    .line 1456
    iput-boolean v6, v3, Lcom/keniu/security/traffic/f;->e:Z

    .line 1457
    iput-boolean v6, v3, Lcom/keniu/security/traffic/f;->d:Z

    .line 1459
    :cond_0
    iget-object v3, v3, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1448
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    .line 1464
    :try_start_0
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1465
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1466
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 1467
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficMainActivity;Ljava/lang/Object;)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/keniu/security/traffic/br;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    const p1, 0x7f0803b2

    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0803b3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v3

    iget-boolean v4, v1, Lcom/keniu/security/traffic/y;->a:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, -0x1c57d6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0b02b2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance p1, Lcom/keniu/security/traffic/bm;

    invoke-direct {p1, p0}, Lcom/keniu/security/traffic/bm;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-object p1, p1, Lcom/keniu/security/traffic/br;->i:[J

    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a([J)Lorg/achartengine/b/c;

    move-result-object p1

    new-instance v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    new-instance v2, Lorg/achartengine/renderer/e;

    invoke-direct {v2}, Lorg/achartengine/renderer/e;-><init>()V

    invoke-virtual {v2}, Lorg/achartengine/renderer/e;->b()V

    invoke-virtual {v2}, Lorg/achartengine/renderer/e;->d()V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/e;->a(Landroid/graphics/Paint$Align;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/e;->a(Z)V

    const-wide/high16 v3, 0x402b

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/e;->a(F)V

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/c;)V

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/achartengine/a/c;->a:Lorg/achartengine/a/c;

    invoke-static {v2, p1, v0, v3}, Lorg/achartengine/a;->a(Landroid/content/Context;Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/a/c;)Lorg/achartengine/b;

    move-result-object p1

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->j:Lorg/achartengine/b;

    iget-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->j:Lorg/achartengine/b;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/achartengine/b;->setBackgroundColor(I)V

    const-wide/high16 v2, 0x4049

    iget-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-object p1, p1, Lcom/keniu/security/traffic/br;->i:[J

    if-eqz p1, :cond_b

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-object v6, v6, Lcom/keniu/security/traffic/br;->i:[J

    array-length v6, v6

    if-ge p1, v6, :cond_8

    iget-object v6, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-object v6, v6, Lcom/keniu/security/traffic/br;->i:[J

    aget-wide v6, v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_1

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-object v4, v4, Lcom/keniu/security/traffic/br;->i:[J

    aget-wide v4, v4, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, -0x1c57d6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0b02b1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance p1, Lcom/keniu/security/traffic/bn;

    invoke-direct {p1, p0}, Lcom/keniu/security/traffic/bn;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u6708\u5df2\u7528"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "MB\uff0c"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\u70b9\u6b64\u8bbe\u7f6e\u5957\u9910\u989d\u5ea6"

    sget-object v3, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v2, v3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance p1, Lcom/keniu/security/traffic/bo;

    invoke-direct {p1, p0}, Lcom/keniu/security/traffic/bo;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u6708\u5df2\u7528"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "MB\uff0c"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\u70b9\u6b64\u8bbe\u7f6e\u8fd0\u8425\u5546"

    sget-object v3, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v2, v3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance p1, Lcom/keniu/security/traffic/bp;

    invoke-direct {p1, p0}, Lcom/keniu/security/traffic/bp;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    sput-boolean v2, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0340

    invoke-virtual {p0, v3}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v3, v3, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v5, v1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020222

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, -0xd6d9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3fd0

    mul-double/2addr v2, v4

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->g:J

    long-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3fe8

    iget-wide v6, v1, Lcom/keniu/security/traffic/y;->d:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v4, v4, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const v2, 0x7f0b033f

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, -0x1c57d6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_6
    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v4, v4, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    const/4 v2, 0x1

    sput-boolean v2, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const v2, 0x7f0b033e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, v1, Lcom/keniu/security/traffic/y;->d:J

    iget-object v7, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v7, v7, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, -0x1c57d6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const v2, 0x7f0b0341

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, -0x9b44ee

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_8
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_9

    long-to-double v2, v4

    const-wide/high16 v4, 0x4090

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4090

    div-double/2addr v2, v4

    :cond_9
    const-wide v4, 0x3f847ae147ae147bL

    cmpg-double p1, v2, v4

    if-gez p1, :cond_a

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_a

    const-wide v2, 0x3f847ae147ae147bL

    :cond_a
    const-wide/high16 v4, 0x4010

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008

    div-double/2addr v2, v4

    :cond_b
    invoke-virtual {v0, v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v4

    invoke-virtual {v1, p1}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    const-wide/16 v10, 0x7

    cmp-long p1, v8, v10

    if-ltz p1, :cond_d

    long-to-double v10, v8

    const-wide/high16 v12, 0x401a

    sub-double/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    long-to-double v8, v8

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    :goto_3
    sub-long v4, v6, v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-double v4, v4

    const/4 p1, 0x4

    new-array p1, p1, [D

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3fe0

    aput-wide v7, p1, v6

    const/4 v6, 0x1

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v4, v7

    aput-wide v4, p1, v6

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    aput-wide v5, p1, v4

    const/4 v4, 0x3

    aput-wide v2, p1, v4

    invoke-virtual {v0, p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanLimits([D)V

    const p1, 0x7f0803be

    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->j:Lorg/achartengine/b;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0803b9

    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v0, Lcom/keniu/security/traffic/br;->f:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0803bb

    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v0, Lcom/keniu/security/traffic/br;->g:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0803bc

    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0803bd

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_e

    const v2, 0x7f0b033c

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x9a45ec

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    iget-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v4, p1, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->F:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const p1, 0x7f0803c0

    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/keniu/security/traffic/az;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/az;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, v1, Lcom/keniu/security/traffic/y;->w:I

    if-nez p1, :cond_f

    iget-object p0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const p1, 0x7f080304

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_c
    :goto_5
    return-void

    :cond_d
    const-wide/high16 v8, 0x3fe0

    invoke-virtual {v0, v8, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    const-wide/high16 v8, 0x401e

    invoke-virtual {v0, v8, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_3

    :cond_e
    const v2, 0x7f0b033d

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    iget-wide v2, p1, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    iget p1, v1, Lcom/keniu/security/traffic/y;->w:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object p0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const p1, 0x7f080305

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    :cond_10
    iget p1, v1, Lcom/keniu/security/traffic/y;->w:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object p0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const p1, 0x7f080306

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5
.end method

.method private a(Ljava/lang/Object;)V
    .locals 18
    .parameter

    .prologue
    .line 499
    check-cast p1, Lcom/keniu/security/traffic/br;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    .line 500
    invoke-static/range {p0 .. p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v4

    .line 502
    const v3, 0x7f0803b2

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 503
    const v3, 0x7f0803b3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 505
    invoke-static/range {p0 .. p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v5

    .line 506
    invoke-static/range {p0 .. p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v6

    .line 509
    iget-boolean v7, v4, Lcom/keniu/security/traffic/y;->a:Z

    if-nez v7, :cond_2

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    const v5, -0x1c57d6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    const v5, 0x7f0b02b2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 516
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 517
    new-instance v5, Lcom/keniu/security/traffic/bm;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/bm;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v3, v0

    iget-object v3, v3, Lcom/keniu/security/traffic/br;->i:[J

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a([J)Lorg/achartengine/b/c;

    move-result-object v3

    .line 652
    new-instance v5, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    new-instance v6, Lorg/achartengine/renderer/e;

    invoke-direct {v6}, Lorg/achartengine/renderer/e;-><init>()V

    invoke-virtual {v6}, Lorg/achartengine/renderer/e;->b()V

    invoke-virtual {v6}, Lorg/achartengine/renderer/e;->d()V

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Lorg/achartengine/renderer/e;->a(Landroid/graphics/Paint$Align;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/achartengine/renderer/e;->a(Z)V

    const-wide/high16 v7, 0x402b

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    float-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/achartengine/renderer/e;->a(F)V

    invoke-virtual {v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/c;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lorg/achartengine/a/c;->a:Lorg/achartengine/a/c;

    invoke-static {v6, v3, v5, v7}, Lorg/achartengine/a;->a(Landroid/content/Context;Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/a/c;)Lorg/achartengine/b;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/traffic/TrafficMainActivity;->j:Lorg/achartengine/b;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->j:Lorg/achartengine/b;

    move-object v3, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/achartengine/b;->setBackgroundColor(I)V

    .line 657
    const-wide/high16 v6, 0x4049

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v3, v0

    iget-object v3, v3, Lcom/keniu/security/traffic/br;->i:[J

    if-eqz v3, :cond_b

    .line 659
    const-wide/16 v8, 0x0

    .line 660
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v10, v0

    iget-object v10, v10, Lcom/keniu/security/traffic/br;->i:[J

    array-length v10, v10

    if-ge v3, v10, :cond_8

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v10, v0

    iget-object v10, v10, Lcom/keniu/security/traffic/br;->i:[J

    aget-wide v10, v10, v3

    cmp-long v10, v10, v8

    if-lez v10, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v8, v0

    iget-object v8, v8, Lcom/keniu/security/traffic/br;->i:[J

    aget-wide v8, v8, v3

    .line 660
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 532
    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const v5, -0x1c57d6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    const v5, 0x7f0b02b1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 539
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 540
    new-instance v5, Lcom/keniu/security/traffic/bn;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/bn;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 555
    :cond_3
    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672c\u6708\u5df2\u7528"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v6, v0

    iget-wide v6, v6, Lcom/keniu/security/traffic/br;->g:J

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u70b9\u6b64\u8bbe\u7f6e\u5957\u9910\u989d\u5ea6"

    sget-object v7, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v6, v7}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 564
    new-instance v5, Lcom/keniu/security/traffic/bo;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/bo;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 576
    :cond_4
    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672c\u6708\u5df2\u7528"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v6, v0

    iget-wide v6, v6, Lcom/keniu/security/traffic/br;->g:J

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u70b9\u6b64\u8bbe\u7f6e\u8fd0\u8425\u5546"

    sget-object v7, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v6, v7}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 585
    new-instance v5, Lcom/keniu/security/traffic/bp;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/bp;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 601
    :cond_5
    const/4 v5, 0x0

    sput-boolean v5, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v5, v0

    iget-wide v5, v5, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 604
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0b0340

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v6, v0

    iget-wide v6, v6, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v8, v4, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020222

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    const v5, -0xd6d9

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    :goto_2
    iget-wide v5, v4, Lcom/keniu/security/traffic/y;->d:J

    long-to-double v5, v5

    const-wide/high16 v7, 0x3fd0

    mul-double/2addr v5, v7

    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->g:J

    long-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v5, v0

    iget-wide v5, v5, Lcom/keniu/security/traffic/br;->g:J

    long-to-double v5, v5

    const-wide/high16 v7, 0x3fe8

    iget-wide v9, v4, Lcom/keniu/security/traffic/y;->d:J

    long-to-double v9, v9

    mul-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    iget-wide v5, v4, Lcom/keniu/security/traffic/y;->d:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v7, v0

    iget-wide v7, v7, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v5, v7

    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 638
    const/4 v5, 0x1

    sput-boolean v5, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    .line 640
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 641
    const v5, 0x7f0b033f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    const v5, -0x1c57d6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 613
    :cond_6
    iget-wide v5, v4, Lcom/keniu/security/traffic/y;->g:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    iget-wide v5, v4, Lcom/keniu/security/traffic/y;->d:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v7, v0

    iget-wide v7, v7, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v5, v7

    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_7

    .line 616
    const/4 v5, 0x1

    sput-boolean v5, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    .line 617
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 618
    const v5, 0x7f0b033e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v4, Lcom/keniu/security/traffic/y;->d:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v10, v0

    iget-wide v10, v10, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    const v5, -0x1c57d6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 627
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 628
    const v5, 0x7f0b0341

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020221

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    const v5, -0x9b44ee

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 665
    :cond_8
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_9

    .line 666
    long-to-double v6, v8

    const-wide/high16 v8, 0x4090

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4090

    div-double/2addr v6, v8

    .line 668
    :cond_9
    const-wide v8, 0x3f847ae147ae147bL

    cmpg-double v3, v6, v8

    if-gez v3, :cond_a

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_a

    .line 669
    const-wide v6, 0x3f847ae147ae147bL

    .line 671
    :cond_a
    const-wide/high16 v8, 0x4010

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4008

    div-double/2addr v6, v8

    .line 673
    :cond_b
    invoke-virtual {v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 675
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 676
    invoke-virtual {v4, v3}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v8

    .line 677
    invoke-virtual {v4, v3}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v10

    .line 680
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    const-wide/32 v14, 0x5265c00

    add-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    .line 682
    const-wide/32 v14, 0x5265c00

    div-long/2addr v12, v14

    .line 684
    const-wide/16 v14, 0x7

    cmp-long v3, v12, v14

    if-ltz v3, :cond_d

    .line 685
    long-to-double v14, v12

    const-wide/high16 v16, 0x401a

    sub-double v14, v14, v16

    invoke-virtual {v5, v14, v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 686
    long-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    invoke-virtual {v5, v12, v13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 693
    :goto_3
    sub-long v8, v10, v8

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-double v8, v8

    .line 695
    const/4 v3, 0x4

    new-array v3, v3, [D

    const/4 v10, 0x0

    const-wide/high16 v11, 0x3fe0

    aput-wide v11, v3, v10

    const/4 v10, 0x1

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v8, v11

    aput-wide v8, v3, v10

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    const/4 v8, 0x3

    aput-wide v6, v3, v8

    invoke-virtual {v5, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanLimits([D)V

    .line 699
    const v3, 0x7f0803be

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 701
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->j:Lorg/achartengine/b;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    const v3, 0x7f0803b9

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v3, v0

    iget-wide v5, v3, Lcom/keniu/security/traffic/br;->f:J

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    const v3, 0x7f0803bb

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v3, v0

    iget-wide v5, v3, Lcom/keniu/security/traffic/br;->g:J

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const v3, 0x7f0803bc

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 715
    const v3, 0x7f0803bd

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v5, v0

    iget-wide v5, v5, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_e

    .line 717
    const v5, 0x7f0b033c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    const v5, -0x9a45ec

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 721
    iget-wide v5, v4, Lcom/keniu/security/traffic/y;->d:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v7, v0

    iget-wide v7, v7, Lcom/keniu/security/traffic/br;->g:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->F:Ljava/lang/Runnable;

    move-object v5, v0

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    const v3, 0x7f0803c0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 737
    new-instance v3, Lcom/keniu/security/traffic/az;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/az;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget v3, v4, Lcom/keniu/security/traffic/y;->w:I

    if-nez v3, :cond_f

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    move-object v3, v0

    const v4, 0x7f080304

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 840
    :cond_c
    :goto_5
    return-void

    .line 688
    :cond_d
    const-wide/high16 v12, 0x3fe0

    invoke-virtual {v5, v12, v13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 689
    const-wide/high16 v12, 0x401e

    invoke-virtual {v5, v12, v13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_3

    .line 725
    :cond_e
    const v5, 0x7f0b033d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    move-object v5, v0

    iget-wide v5, v5, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 833
    :cond_f
    iget v3, v4, Lcom/keniu/security/traffic/y;->w:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_10

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    move-object v3, v0

    const v4, 0x7f080305

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    .line 835
    :cond_10
    iget v3, v4, Lcom/keniu/security/traffic/y;->w:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    move-object v3, v0

    const v4, 0x7f080306

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5
.end method

.method private a(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 913
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v1, v9

    .line 915
    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_2

    .line 916
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->i:J

    int-to-long v5, v1

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 918
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 919
    aget-object v3, v2, v9

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 920
    aget-object v3, v2, v9

    const-string v4, "0"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 921
    :cond_0
    aget-object v3, v2, v10

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    aget-object v3, v2, v10

    const-string v4, "0"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 923
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v2, v10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    add-int/lit8 v3, v1, 0x1

    int-to-double v3, v3

    invoke-virtual {p1, v3, v4, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    :cond_2
    const-wide/high16 v0, 0x402b

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 928
    const v0, -0x606061

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 930
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 931
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 932
    const-wide/high16 v0, 0x4014

    invoke-virtual {p1, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 933
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 934
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 935
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 936
    const/high16 v0, 0xff

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 937
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 938
    invoke-virtual {p1, v9, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    .line 939
    invoke-virtual {p1, v10, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 941
    return-void

    .line 934
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficMainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->t:Z

    return p1
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1204
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1205
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 398
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 399
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 404
    new-instance v2, Lcom/keniu/security/traffic/br;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/br;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    .line 406
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    .line 407
    invoke-virtual {v3, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v4

    .line 408
    invoke-virtual {v3, v1}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v6

    .line 411
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v8

    .line 413
    if-eqz v8, :cond_2

    .line 414
    iget-wide v9, v8, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v11, v8, Lcom/keniu/security/traffic/ac;->b:J

    add-long v8, v9, v11

    iput-wide v8, v2, Lcom/keniu/security/traffic/br;->g:J

    .line 418
    :cond_2
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/keniu/security/traffic/z;->a(JJ)[J

    move-result-object v6

    iput-object v6, v2, Lcom/keniu/security/traffic/br;->i:[J

    .line 423
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 425
    iget-wide v4, v2, Lcom/keniu/security/traffic/br;->g:J

    iput-wide v4, v2, Lcom/keniu/security/traffic/br;->f:J

    .line 427
    iget-object v4, v2, Lcom/keniu/security/traffic/br;->i:[J

    if-eqz v4, :cond_3

    .line 428
    iget-object v4, v2, Lcom/keniu/security/traffic/br;->i:[J

    iget-wide v5, v2, Lcom/keniu/security/traffic/br;->f:J

    aput-wide v5, v4, v13

    .line 439
    :cond_3
    :goto_1
    invoke-virtual {v3, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->i:J

    .line 441
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 442
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->b:Z

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->E:Landroid/os/Handler;

    invoke-virtual {v0, v13, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 432
    :cond_4
    const v4, 0xf4240

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v4

    .line 434
    if-eqz v4, :cond_3

    .line 435
    iget-wide v5, v4, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/ac;->b:J

    add-long v4, v5, v7

    iput-wide v4, v2, Lcom/keniu/security/traffic/br;->f:J

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a()V

    return-void
.end method

.method private c()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x402b

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 888
    new-instance v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 890
    new-instance v1, Lorg/achartengine/renderer/e;

    invoke-direct {v1}, Lorg/achartengine/renderer/e;-><init>()V

    .line 892
    invoke-virtual {v1}, Lorg/achartengine/renderer/e;->b()V

    .line 894
    invoke-virtual {v1}, Lorg/achartengine/renderer/e;->d()V

    .line 896
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/e;->a(Landroid/graphics/Paint$Align;)V

    .line 898
    invoke-virtual {v1, v11}, Lorg/achartengine/renderer/e;->a(Z)V

    .line 900
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/e;->a(F)V

    .line 903
    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/c;)V

    .line 905
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM.dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v10

    :goto_0
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->i:J

    int-to-long v6, v2

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v10

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v10

    const-string v5, "0"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    :cond_0
    aget-object v4, v3, v11

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v3, v11

    const-string v5, "0"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v3, v11

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    mul-double/2addr v1, v12

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    const v1, -0x606061

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    const-wide/high16 v1, 0x4014

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    const/high16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    invoke-virtual {v0, v10, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    invoke-virtual {v0, v11, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 907
    return-object v0

    .line 905
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->s:Z

    return v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 945
    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->s:Z

    .line 948
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 958
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    const v1, -0x1c57d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 960
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0b02a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 964
    :cond_1
    new-instance v0, Lcom/keniu/security/traffic/bd;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/bd;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/traffic/bd;->start()V

    .line 992
    return-void
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()V
    .locals 10

    .prologue
    const v4, 0x7f0b02bf

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1023
    sput-boolean v6, Lcom/keniu/security/traffic/at;->a:Z

    .line 1025
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->s:Z

    if-nez v0, :cond_0

    .line 1026
    const v0, 0x7f0b02a3

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1198
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 1033
    iget-object v0, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1039
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1040
    const v1, 0x7f0b02d3

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1042
    const v1, 0x7f0b0303

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/traffic/be;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/be;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1064
    const v1, 0x7f0b036e

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1067
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    .line 1068
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0

    .line 1071
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1073
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1074
    const-class v1, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1076
    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1080
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1082
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1083
    iget-object v2, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1084
    iget-object v2, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1085
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1087
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1089
    const v1, 0x7f0b02d6

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1091
    const v1, 0x7f0b0303

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/traffic/bf;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/bf;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1117
    const v1, 0x7f0b03ca

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1120
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    .line 1121
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 1128
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1129
    const v0, 0x7f0b02d0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1135
    :cond_4
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->o:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x4106b48000000000L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    .line 1138
    const v0, 0x7f0b02d1

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1144
    :cond_5
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/wali/zft/plugin;->available()I

    move-result v2

    if-ne v2, v7, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/keniu/security/a;->ab()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    .line 1147
    :cond_6
    iget-boolean v0, v1, Lcom/keniu/security/traffic/y;->q:Z

    if-eqz v0, :cond_7

    .line 1149
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d()V

    goto/16 :goto_0

    .line 1153
    :cond_7
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1155
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d()V

    goto/16 :goto_0

    .line 1160
    :cond_8
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1162
    const v1, 0x7f0b0343

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 1163
    const v1, 0x7f0b032a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 1164
    const v1, 0x7f0b03fa

    new-instance v2, Lcom/keniu/security/traffic/bg;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/bg;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1174
    const v1, 0x7f0b021a

    invoke-virtual {v0, v1, v8}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1175
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    .line 1176
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 1184
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1186
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1189
    :cond_a
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v9, :cond_b

    .line 1191
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    const v2, -0x1c57d6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1193
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->r:Landroid/widget/TextView;

    const v2, 0x7f0b02a4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1196
    :cond_b
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/at;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;)V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1212
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1214
    const v1, 0x7f0b0343

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 1215
    const v1, 0x7f0b02b7

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 1216
    const v1, 0x7f0b04be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1217
    const v1, 0x7f0b076b

    new-instance v2, Lcom/keniu/security/traffic/bh;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/bh;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1232
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    .line 1233
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 1234
    return-void
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static g()V
    .locals 2

    .prologue
    .line 1475
    :try_start_0
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1476
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thread_save_traffic"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 1478
    :cond_0
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    :goto_0
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1484
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    .line 1487
    :cond_1
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d:Lcom/keniu/security/traffic/v;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1489
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    .line 67
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Lcom/keniu/security/traffic/br;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/br;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v4

    invoke-virtual {v3, v1}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-wide v9, v8, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v11, v8, Lcom/keniu/security/traffic/ac;->b:J

    add-long v8, v9, v11

    iput-wide v8, v2, Lcom/keniu/security/traffic/br;->g:J

    :cond_0
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/keniu/security/traffic/z;->a(JJ)[J

    move-result-object v6

    iput-object v6, v2, Lcom/keniu/security/traffic/br;->i:[J

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, v2, Lcom/keniu/security/traffic/br;->g:J

    iput-wide v4, v2, Lcom/keniu/security/traffic/br;->f:J

    iget-object v4, v2, Lcom/keniu/security/traffic/br;->i:[J

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/keniu/security/traffic/br;->i:[J

    iget-wide v5, v2, Lcom/keniu/security/traffic/br;->f:J

    aput-wide v5, v4, v13

    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->i:J

    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->E:Landroid/os/Handler;

    invoke-virtual {v0, v13, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :cond_3
    const v4, 0xf4240

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-wide v5, v4, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/ac;->b:J

    add-long v4, v5, v7

    iput-wide v4, v2, Lcom/keniu/security/traffic/br;->f:J

    goto :goto_0
.end method

.method static synthetic i(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->f()V

    return-void
.end method

.method static synthetic j(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic k(Lcom/keniu/security/traffic/TrafficMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    return v0
.end method

.method static synthetic l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic m(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e()V

    return-void
.end method

.method static synthetic n(Lcom/keniu/security/traffic/TrafficMainActivity;)Lcom/keniu/security/traffic/br;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->C:Lcom/keniu/security/traffic/br;

    return-object v0
.end method

.method static synthetic o(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1414
    sget v0, Lcom/keniu/security/monitor/a;->x:I

    if-ne p1, v0, :cond_0

    .line 1416
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->u:Z

    if-eqz v0, :cond_0

    .line 1418
    iput-boolean v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->u:Z

    .line 1420
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1422
    if-eqz v0, :cond_2

    .line 1423
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->v:Z

    if-eqz v0, :cond_1

    .line 1424
    iput-boolean v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->v:Z

    .line 1425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1426
    const-class v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1428
    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1440
    :cond_0
    :goto_0
    return v2

    .line 1429
    :cond_1
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->w:Z

    if-eqz v0, :cond_0

    .line 1430
    iput-boolean v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->w:Z

    .line 1431
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->E:Landroid/os/Handler;

    const/16 v1, 0x120

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->z:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->z:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 997
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 998
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a()V

    .line 999
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e()V

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 1002
    sput-boolean v3, Lcom/keniu/security/traffic/at;->a:Z

    .line 1003
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a()V

    .line 1004
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d()V

    goto :goto_0

    .line 1005
    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 1008
    iget v1, v0, Lcom/keniu/security/traffic/y;->w:I

    if-nez v1, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const v1, 0x7f080304

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 1010
    :cond_3
    iget v1, v0, Lcom/keniu/security/traffic/y;->w:I

    if-ne v1, v3, :cond_4

    .line 1011
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const v1, 0x7f080305

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 1012
    :cond_4
    iget v0, v0, Lcom/keniu/security/traffic/y;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1013
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const v1, 0x7f080306

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 1015
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, -0x1

    const v5, 0x7f0b03c4

    const/4 v4, 0x1

    .line 1238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080301

    if-ne v0, v1, :cond_0

    .line 1239
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1242
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1244
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->u:Z

    .line 1245
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->v:Z

    .line 1246
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 1262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    if-ne v0, v1, :cond_1

    .line 1264
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1266
    const-string v0, "\u60a8\u7684\u624b\u673a\u6ca1\u6709ROOT,\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1268
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 1410
    :cond_1
    :goto_1
    return-void

    .line 1249
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1250
    const-class v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1253
    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1257
    :cond_3
    const-string v0, "\u60a8\u7684\u624b\u673a\u6ca1\u6709ROOT,\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1273
    :cond_4
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1275
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->u:Z

    .line 1276
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->w:Z

    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    .line 1278
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    goto :goto_1

    .line 1283
    :cond_5
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-nez v0, :cond_6

    .line 1284
    new-instance v0, Lcom/keniu/security/traffic/r;

    invoke-direct {v0}, Lcom/keniu/security/traffic/r;-><init>()V

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    .line 1285
    :cond_6
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 1287
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1291
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1296
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    const v3, 0x4fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 1301
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    const v3, 0x4fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 1307
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 1309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1311
    :pswitch_0
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_7

    .line 1312
    const/4 v0, 0x0

    iput v0, v1, Lcom/keniu/security/traffic/y;->w:I

    .line 1313
    invoke-virtual {v1, p0, v5}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1316
    invoke-static {}, Lcom/keniu/security/traffic/TrafficMainActivity;->g()V

    goto/16 :goto_1

    .line 1318
    :cond_7
    iput v7, v1, Lcom/keniu/security/traffic/y;->w:I

    .line 1319
    invoke-virtual {v1, p0, v5}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1321
    invoke-direct {p0, v6}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(I)V

    .line 1322
    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-eqz v1, :cond_1

    .line 1323
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1327
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1331
    sput-object v8, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    goto/16 :goto_1

    .line 1337
    :pswitch_1
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eq v2, v4, :cond_8

    .line 1338
    iput v4, v1, Lcom/keniu/security/traffic/y;->w:I

    .line 1339
    invoke-virtual {v1, p0, v5}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1341
    const v0, 0x7f080305

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(I)V

    goto/16 :goto_1

    .line 1343
    :cond_8
    iput v7, v1, Lcom/keniu/security/traffic/y;->w:I

    .line 1344
    invoke-virtual {v1, p0, v5}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1346
    invoke-direct {p0, v6}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(I)V

    .line 1347
    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-eqz v1, :cond_1

    .line 1348
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1352
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1356
    sput-object v8, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    goto/16 :goto_1

    .line 1361
    :pswitch_2
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    .line 1362
    const/4 v0, 0x2

    iput v0, v1, Lcom/keniu/security/traffic/y;->w:I

    .line 1363
    invoke-virtual {v1, p0, v5}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1366
    invoke-static {}, Lcom/keniu/security/traffic/TrafficMainActivity;->g()V

    goto/16 :goto_1

    .line 1368
    :cond_9
    iput v7, v1, Lcom/keniu/security/traffic/y;->w:I

    .line 1369
    invoke-virtual {v1, p0, v5}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1371
    invoke-direct {p0, v6}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(I)V

    .line 1372
    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-eqz v1, :cond_1

    .line 1373
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1377
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1381
    sput-object v8, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    goto/16 :goto_1

    .line 1309
    nop

    :pswitch_data_0
    .packed-switch 0x7f080304
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    const v0, 0x7f030109

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->setContentView(I)V

    .line 213
    new-instance v0, Lcom/keniu/security/traffic/bq;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/bq;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->l:Lcom/keniu/security/traffic/bq;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->l:Lcom/keniu/security/traffic/bq;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    .line 221
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const v1, 0x7f080304

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const v1, 0x7f080305

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    const v1, 0x7f080306

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 226
    sget v1, Lcom/keniu/security/monitor/a;->x:I

    const v2, 0x3fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 229
    const-string v0, "\u63d0\u6743\u5931\u8d25,\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->z:Landroid/widget/Toast;

    .line 232
    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->B:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f0803bf

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->A:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    .line 235
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->A:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    new-instance v1, Lcom/keniu/security/traffic/bi;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bi;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(Lcom/keniu/security/traffic/m;)V

    .line 246
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->A:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    new-instance v1, Lcom/keniu/security/traffic/bj;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bj;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(Lcom/keniu/security/traffic/n;)V

    .line 258
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 325
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->dismiss()V

    .line 327
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->e:Lcom/keniu/security/util/ap;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->dismiss()V

    .line 331
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->f:Lcom/keniu/security/util/ap;

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->dismiss()V

    .line 335
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->g:Lcom/keniu/security/util/ap;

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->dismiss()V

    .line 339
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->h:Lcom/keniu/security/util/ap;

    .line 341
    :cond_3
    iput-boolean v3, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->b:Z

    .line 342
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->D:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 353
    :cond_6
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->l:Lcom/keniu/security/traffic/bq;

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/TrafficIcon2;

    .line 357
    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficIcon2;->c()V

    .line 359
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 360
    sget v1, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 362
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    .line 200
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->finish()V

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    .line 318
    :cond_1
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/TrafficIcon2;

    .line 319
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->b()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 266
    iget v1, v0, Lcom/keniu/security/traffic/y;->w:I

    if-nez v1, :cond_5

    .line 267
    const v0, 0x7f080304

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->y:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->s:Z

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a()V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    sput-boolean v3, Lcom/keniu/security/traffic/at;->a:Z

    .line 285
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d()V

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromTrafficUsedSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromTrafficUsedSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e()V

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoadjustnotify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoadjustnotify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e()V

    .line 299
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficMainActivity;->f()V

    .line 307
    :cond_4
    return-void

    .line 268
    :cond_5
    iget v1, v0, Lcom/keniu/security/traffic/y;->w:I

    if-ne v1, v3, :cond_6

    .line 269
    const v0, 0x7f080305

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    goto :goto_0

    .line 270
    :cond_6
    iget v0, v0, Lcom/keniu/security/traffic/y;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 271
    const v0, 0x7f080306

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    goto/16 :goto_0

    .line 273
    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->x:I

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMainActivity;->k:Landroid/widget/PopupWindow;

    .line 188
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
