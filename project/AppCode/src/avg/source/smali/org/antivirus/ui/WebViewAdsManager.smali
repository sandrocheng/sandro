.class public Lorg/antivirus/ui/WebViewAdsManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/webkit/WebView;

.field private d:Z

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->a:Z

    iput-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->d:Z

    const/16 v0, 0x400

    iput v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->e:I

    const-string v0, "http://www.avg.com/mobile-ads?a="

    iput-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->f:Ljava/lang/String;

    const-string v0, "http://www.avg.com/mobile-ads-testing"

    iput-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 12

    const-wide/high16 v10, 0x4000

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/16 v0, 0x32

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_1

    const/16 v0, 0x5a

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

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

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

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lorg/antivirus/ui/WebViewAdsManager;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/antivirus/ui/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/WebViewAdsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->a:Z

    return v0
.end method

.method static synthetic b(Lorg/antivirus/ui/WebViewAdsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->b:Z

    return v0
.end method

.method static synthetic c(Lorg/antivirus/ui/WebViewAdsManager;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->a:Z

    return v0
.end method

.method static synthetic d(Lorg/antivirus/ui/WebViewAdsManager;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->b:Z

    return v0
.end method

.method static synthetic e(Lorg/antivirus/ui/WebViewAdsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->d:Z

    return v0
.end method

.method static synthetic f(Lorg/antivirus/ui/WebViewAdsManager;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public initAds(Landroid/app/Activity;ILorg/antivirus/core/b/a;Ljava/lang/String;)V
    .locals 13

    :try_start_0
    new-instance v1, Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/antivirus/core/telephony/TelephonyInfo;->getUniqueId(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x3

    if-le v2, v6, :cond_0

    const-class v2, Landroid/os/Build;

    const-string v6, "MANUFACTURER"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_0
    :goto_1
    :try_start_2
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "100"

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lorg/antivirus/core/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    move v2, v1

    :goto_3
    new-instance v1, Lorg/antivirus/core/b/g;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->f()J

    move-result-wide v8

    sget-object v10, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget v10, v10, Lorg/antivirus/core/b/a;->o:I

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uuid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " lng="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/antivirus/Strings;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " screen="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x58

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x58

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " model="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " manufacturer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " os=Android-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pv=3.0.3.174757"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " idate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " varc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lic="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d5544fG==*%877hT--==HHSYlWeeY89904444=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/a/b/a;->c([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " z="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/a/a/a/a/a;->a([BZ)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://www.avg.com/mobile-ads?a="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    new-instance v4, Lorg/antivirus/ui/WebViewAdsManager$1;

    invoke-direct {v4, p0, p1, v1}, Lorg/antivirus/ui/WebViewAdsManager$1;-><init>(Lorg/antivirus/ui/WebViewAdsManager;Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    new-instance v3, Lorg/antivirus/ui/WebViewAdsManager$2;

    invoke-direct {v3, p0}, Lorg/antivirus/ui/WebViewAdsManager$2;-><init>(Lorg/antivirus/ui/WebViewAdsManager;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/antivirus/ui/WebViewAdsManager$3;

    invoke-direct {v3, p0, v2, p1}, Lorg/antivirus/ui/WebViewAdsManager$3;-><init>(Lorg/antivirus/ui/WebViewAdsManager;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_4
    return-void

    :cond_2
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x3

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :cond_4
    move v2, v1

    goto/16 :goto_3
.end method

.method public onConfigurationChanged(Landroid/app/Activity;ILandroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lorg/antivirus/ui/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/WebViewAdsManager;->d:Z

    return-void
.end method
