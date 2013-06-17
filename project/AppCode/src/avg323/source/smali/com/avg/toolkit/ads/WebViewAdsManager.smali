.class public Lcom/avg/toolkit/ads/WebViewAdsManager;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/webkit/WebView;

.field private d:Z

.field private e:Lcom/avg/toolkit/ads/c;

.field private f:Ljava/lang/Integer;

.field private g:Z

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->a:Z

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->b:Z

    iput-object v1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->d:Z

    iput-object v1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->e:Lcom/avg/toolkit/ads/c;

    const/16 v0, 0x400

    iput v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->h:I

    const-string v0, "http://www.avg.com/mobile-ads?a="

    iput-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->i:Ljava/lang/String;

    const-string v0, "http://www.avg.com/mobile-ads-testing?a="

    iput-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->a:Z

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->b:Z

    iput-object v1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->d:Z

    iput-object v1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->e:Lcom/avg/toolkit/ads/c;

    const/16 v0, 0x400

    iput v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->h:I

    const-string v0, "http://www.avg.com/mobile-ads?a="

    iput-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->i:Ljava/lang/String;

    const-string v0, "http://www.avg.com/mobile-ads-testing?a="

    iput-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 13

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4000

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/16 v0, 0x32

    iget-object v2, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    int-to-double v4, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v0

    const-wide/high16 v8, 0x4064

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    iget-boolean v4, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->g:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_2

    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_3
    cmpl-double v0, v2, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/avg/toolkit/ads/WebViewAdsManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/avg/toolkit/ads/WebViewAdsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/avg/toolkit/ads/WebViewAdsManager;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/avg/toolkit/ads/WebViewAdsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->d:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p4, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->f:Ljava/lang/Integer;

    iput-boolean p5, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->g:Z

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->a:Z

    iput-boolean v2, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->b:Z

    iput-boolean v3, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/avg/toolkit/ads/WebViewAdsManager;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/avg/toolkit/ads/a;

    invoke-direct {v1, p0, p1}, Lcom/avg/toolkit/ads/a;-><init>(Lcom/avg/toolkit/ads/WebViewAdsManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/avg/toolkit/ads/b;

    invoke-direct {v1, p0}, Lcom/avg/toolkit/ads/b;-><init>(Lcom/avg/toolkit/ads/WebViewAdsManager;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->e:Lcom/avg/toolkit/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->e:Lcom/avg/toolkit/ads/c;

    iput-boolean v2, v0, Lcom/avg/toolkit/ads/c;->a:Z

    :cond_2
    new-instance v0, Lcom/avg/toolkit/ads/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/avg/toolkit/ads/c;-><init>(Lcom/avg/toolkit/ads/WebViewAdsManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->e:Lcom/avg/toolkit/ads/c;

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/avg/toolkit/ads/WebViewAdsManager;->e:Lcom/avg/toolkit/ads/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
