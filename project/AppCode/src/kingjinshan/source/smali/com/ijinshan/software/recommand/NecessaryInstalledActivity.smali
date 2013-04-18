.class public Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;
.super Landroid/app/Activity;
.source "NecessaryInstalledActivity.java"


# instance fields
.field private a:Lcom/ijinshan/software/recommand/j;

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
    const-string v0, "http://ex.mobmore.com/api/xpromo/wap_data?app_key=4f3a1e6952701531b9000025&request_count=20&autofill=0&sdk_version=4"

    iput-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->h:Ljava/lang/String;

    .line 142
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Lcom/ijinshan/software/recommand/j;)Lcom/ijinshan/software/recommand/j;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a:Lcom/ijinshan/software/recommand/j;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->f:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Lcom/ijinshan/software/recommand/j;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a:Lcom/ijinshan/software/recommand/j;

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

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->requestWindowFeature(I)Z

    .line 50
    const v0, 0x7f0300f9

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f08037a

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f080376

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d:Landroid/widget/RelativeLayout;

    .line 54
    const v0, 0x7f080373

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->e:Landroid/widget/RelativeLayout;

    .line 55
    const v0, 0x7f080379

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->g:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/ijinshan/software/recommand/i;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/i;-><init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->f:Landroid/content/pm/PackageManager;

    .line 68
    invoke-static {p0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/ijinshan/software/recommand/l;

    invoke-direct {v0, p0}, Lcom/ijinshan/software/recommand/l;-><init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
