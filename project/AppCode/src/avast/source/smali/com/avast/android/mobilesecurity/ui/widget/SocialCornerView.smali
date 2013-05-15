.class public Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;
.super Landroid/widget/LinearLayout;
.source "SocialCornerView.java"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "fb://page/38282497425"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a:Landroid/net/Uri;

    .line 27
    const-string v0, "https://facebook.com/avast"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->b:Landroid/net/Uri;

    .line 29
    const-string v0, "https://plus.google.com/102077833873126564701"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->c:Landroid/net/Uri;

    .line 32
    const-string v0, "twitter://user/avast_antivirus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->d:Landroid/net/Uri;

    .line 33
    const-string v0, "http://twitter.com/#!/avast_antivirus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->e:Landroid/net/Uri;

    .line 35
    const-string v0, "market://details?id=com.avast.android.mobilesecurity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->f:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a:Landroid/net/Uri;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const-string v2, "SocialCornerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking intent availability for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 160
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->c:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->d:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->e:Landroid/net/Uri;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0701eb

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 63
    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/s;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/s;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0701ec

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 80
    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/t;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/t;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 97
    const v0, 0x7f0701ed

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 98
    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/u;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/u;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 120
    const v0, 0x7f0701ee

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 121
    sget-object v1, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->f:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 122
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    new-instance v2, Lcom/avast/android/mobilesecurity/ui/widget/v;

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/v;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->f()V

    .line 53
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->g()V

    .line 54
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->h()V

    .line 55
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->i()V

    .line 56
    return-void
.end method
