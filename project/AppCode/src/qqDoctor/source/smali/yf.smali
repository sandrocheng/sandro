.class public Lyf;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyf$a;
    }
.end annotation


# static fields
.field private static g:LQQPIM/SoftList;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lyf$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/ActivityManager;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyf;->e:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lyf;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lyf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lyf;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v1, LQQPIM/SoftListType;->DEEPCLEAN_SOFTWARE_LIST:LQQPIM/SoftListType;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v0

    sput-object v0, Lyf;->g:LQQPIM/SoftList;

    return-void
.end method

.method static synthetic a(Lyf;)Z
    .locals 1

    iget-boolean v0, p0, Lyf;->b:Z

    return v0
.end method

.method static synthetic a(Lyf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lyf;->b:Z

    return p1
.end method

.method static synthetic b()LQQPIM/SoftList;
    .locals 1

    sget-object v0, Lyf;->g:LQQPIM/SoftList;

    return-object v0
.end method

.method static synthetic b(Lyf;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lyf;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lyf;->f:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyf;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lyf;->f:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lyf;->f:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lyf;)V
    .locals 2

    iget-object v0, p0, Lyf;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lyh;

    iget-object v1, p0, Lyf;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lyh;-><init>(Lyf;Landroid/os/Looper;)V

    iput-object v0, p0, Lyf;->i:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic d(Lyf;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lyf;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lyf;)V
    .locals 7

    iget-object v0, p0, Lyf;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080024

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f080023

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lyf;->d:Landroid/content/Context;

    const v4, 0x7f0b0b87

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lyf;->h:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lyi;

    invoke-direct {v1, p0}, Lyi;-><init>(Lyf;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lyf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lyf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->show()V

    return-void
.end method

.method static synthetic f(Lyf;)Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;
    .locals 1

    iget-object v0, p0, Lyf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    return-object v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    iput-object p1, p0, Lyf;->d:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v1, LQQPIM/SoftListType;->DEEPCLEAN_SOFTWARE_LIST:LQQPIM/SoftListType;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v0

    sput-object v0, Lyf;->g:LQQPIM/SoftList;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lyf;->g:LQQPIM/SoftList;

    iget-object v1, v1, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    iget-object v1, p0, Lyf;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    iget-object v0, p0, Lyf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    new-instance v1, Lyg;

    invoke-direct {v1, p0}, Lyg;-><init>(Lyf;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->setOnCancelLisnetner(Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;)V

    return-void
.end method

.method public onDestory()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lyf;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lyf;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyf$a;

    invoke-virtual {v0}, Lyf$a;->stopWatching()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyf;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lyf;->c:Z

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lyf;->c:Z

    if-nez v0, :cond_2

    invoke-static {}, Lfi;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/.tmfs/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lyf$a;

    invoke-direct {v3, p0, v0}, Lyf$a;-><init>(Lyf;Ljava/lang/String;)V

    invoke-virtual {v3}, Lyf$a;->startWatching()V

    iget-object v0, p0, Lyf;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyf;->c:Z

    :cond_2
    return-void
.end method
