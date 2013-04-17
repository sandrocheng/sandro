.class public Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;,
        Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;,
        Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;
    }
.end annotation


# static fields
.field private static j:Landroid/content/pm/PackageManager;


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Landroid/webkit/WebView;

.field private h:Z

.field private i:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->j:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lafp;

    invoke-direct {v0, p0}, Lafp;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->m:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->n:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->g:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->e:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->j:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.tencent.mtt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->j:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v5, 0x23

    if-lt v4, v5, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->l:Z

    return v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->i:Z

    return v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f:Z

    return v0
.end method

.method public static synthetic k(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f:Z

    return v0
.end method

.method public static synthetic l(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic m(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->e:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromInternalUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->h:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HasApproved"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->i:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ReceiveError"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WifiSsid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->l:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSsid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->a()Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->n:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->a()Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->n:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromInternalUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->h:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HasApproved"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->i:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ReceiveError"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WifiSsid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSsid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->l:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->m:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->l:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {}, Ldi;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    sget-object v1, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    move-object v0, p0

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->setContentView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lafr;

    invoke-direct {v0, p0}, Lafr;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/WifiUtil;->needWifiApprove(Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;)V

    goto :goto_0
.end method
