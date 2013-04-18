.class public Lcom/ijinshan/software/recommand/HotTopActivity;
.super Landroid/app/Activity;
.source "HotTopActivity.java"


# instance fields
.field private a:Lcom/ijinshan/software/recommand/e;

.field private b:Ljava/util/LinkedList;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/content/pm/PackageManager;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "http://ex.mobmore.com/api/xpromo/wap_data?app_key=4ef03f1f527015677f00001d&request_count=20"

    iput-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->h:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/HotTopActivity;Lcom/ijinshan/software/recommand/e;)Lcom/ijinshan/software/recommand/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->a:Lcom/ijinshan/software/recommand/e;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/HotTopActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->b:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->f:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ijinshan/software/recommand/HotTopActivity;)Lcom/ijinshan/software/recommand/e;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->a:Lcom/ijinshan/software/recommand/e;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/ijinshan/software/recommand/HotTopActivity;->requestWindowFeature(I)Z

    .line 49
    const v0, 0x7f0300f8

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f080371

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->c:Landroid/widget/ListView;

    .line 52
    const v0, 0x7f08036d

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->d:Landroid/widget/RelativeLayout;

    .line 53
    const v0, 0x7f08036a

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->e:Landroid/widget/RelativeLayout;

    .line 54
    const v0, 0x7f080370

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->g:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/ijinshan/software/recommand/d;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/d;-><init>(Lcom/ijinshan/software/recommand/HotTopActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/ijinshan/software/recommand/HotTopActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->f:Landroid/content/pm/PackageManager;

    .line 67
    invoke-static {p0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/ijinshan/software/recommand/g;

    invoke-direct {v0, p0}, Lcom/ijinshan/software/recommand/g;-><init>(Lcom/ijinshan/software/recommand/HotTopActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/ijinshan/software/recommand/HotTopActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
