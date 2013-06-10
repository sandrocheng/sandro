.class public Lorg/antivirus/ui/performance/PerformanceActivity;
.super Lorg/antivirus/ui/BaseToolListActivity;


# instance fields
.field a:Ljava/util/ArrayList;

.field private final b:I

.field private final c:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Lorg/antivirus/ui/performance/i;

.field private j:Lorg/antivirus/tuneup/h;

.field private k:Landroid/os/Handler;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/util/HashMap;

.field private s:Lorg/antivirus/ui/WebViewAdsManager;

.field private t:Z

.field private u:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->h:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    new-instance v0, Lorg/antivirus/ui/performance/d;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/performance/d;-><init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->u:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/performance/PerformanceActivity;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/performance/PerformanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/performance/PerformanceActivity;)Lorg/antivirus/ui/WebViewAdsManager;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->s:Lorg/antivirus/ui/WebViewAdsManager;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/performance/PerformanceActivity;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->l:I

    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->m:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->i:Lorg/antivirus/ui/performance/i;

    invoke-virtual {v0}, Lorg/antivirus/ui/performance/i;->notifyDataSetChanged()V

    :cond_0
    return-void

    :pswitch_0
    const v0, 0x7f0900e3

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0900e4

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0900e5

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0900e6

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->m:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lorg/antivirus/ui/performance/PerformanceActivity;)I
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->d()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lorg/antivirus/ui/performance/PerformanceActivity;)J
    .locals 2

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method private d()I
    .locals 8

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_2

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic d(Lorg/antivirus/ui/performance/PerformanceActivity;)Lorg/antivirus/ui/performance/i;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->i:Lorg/antivirus/ui/performance/i;

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lorg/antivirus/ui/performance/PerformanceActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->l:I

    return v0
.end method

.method static synthetic h(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lorg/antivirus/ui/performance/PerformanceActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->p:I

    return v0
.end method

.method static synthetic j(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final c()V
    .locals 2

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->s:Lorg/antivirus/ui/WebViewAdsManager;

    const v1, 0x7f0800ba

    invoke-virtual {v0, p0, v1, p1}, Lorg/antivirus/ui/WebViewAdsManager;->onConfigurationChanged(Landroid/app/Activity;ILandroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->setContentView(I)V

    const v0, 0x7f020018

    const v2, 0x7f020019

    const v3, 0x7f0901a2

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->a(IILjava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/antivirus/ui/performance/b;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    invoke-direct {v3, v1}, Lorg/antivirus/ui/performance/b;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    invoke-direct {v3, v5}, Lorg/antivirus/ui/performance/b;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/antivirus/ui/performance/b;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/antivirus/ui/performance/i;

    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2}, Lorg/antivirus/ui/performance/i;-><init>(Lorg/antivirus/ui/performance/PerformanceActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->i:Lorg/antivirus/ui/performance/i;

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->i:Lorg/antivirus/ui/performance/i;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lorg/antivirus/ui/performance/h;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/performance/h;-><init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lorg/antivirus/tuneup/h;

    invoke-direct {v0, v1}, Lorg/antivirus/tuneup/h;-><init>(I)V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->j:Lorg/antivirus/tuneup/h;

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->k:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lorg/antivirus/ui/performance/e;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/performance/e;-><init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->k:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    const-string v1, "com.android.launcher"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    const-string v1, "com.android.launcher2"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    const-string v1, "com.htc.launcher"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    const-string v1, "com.htc.android.mail"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->r:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/antivirus/ui/WebViewAdsManager;

    invoke-direct {v0}, Lorg/antivirus/ui/WebViewAdsManager;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->s:Lorg/antivirus/ui/WebViewAdsManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v5}, Lorg/antivirus/ui/performance/PerformanceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v5, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->t:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->s:Lorg/antivirus/ui/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->s:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-virtual {v0}, Lorg/antivirus/ui/WebViewAdsManager;->stop()V

    :cond_0
    iget-boolean v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->t:Z

    :cond_1
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onPause()V

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->j:Lorg/antivirus/tuneup/h;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->j:Lorg/antivirus/tuneup/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/h;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public onResume()V
    .locals 10

    const v9, 0x7f07003d

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onResume()V

    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->j:Lorg/antivirus/tuneup/h;

    iget-object v3, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->k:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lorg/antivirus/tuneup/h;->a(Landroid/os/Handler;)V

    iget-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->j:Lorg/antivirus/tuneup/h;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lorg/antivirus/ui/performance/PerformanceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f0901aa

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->p:I

    if-nez v2, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->p:I

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/antivirus/tuneup/ba;->a(Z)[D

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->e()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->f()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090159

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v1

    double-to-long v6, v6

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0901ab

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaBytes()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    if-gtz v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090167

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    :goto_0
    aget-wide v3, v2, v0

    const-wide/high16 v5, 0x4059

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_7

    const/high16 v2, -0x1

    iput v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->p:I

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0901ac

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->q:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    invoke-static {}, Lorg/antivirus/core/compatibility/HoneycombTools;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0901ad

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->q:Ljava/lang/String;

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/ui/performance/f;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/performance/f;-><init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090141

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[number]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->n:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-wide v2, v2, v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/PerformanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lorg/antivirus/ui/performance/PerformanceActivity;->p:I

    goto/16 :goto_1
.end method
