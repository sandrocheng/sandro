.class final Lbyr$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private a:Lbyr$a;

.field private b:Lbyr$a;

.field private c:Lbyr$a;

.field private synthetic d:Lbyr;


# direct methods
.method private constructor <init>(Lbyr;)V
    .locals 1

    iput-object p1, p0, Lbyr$d;->d:Lbyr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lbyv;

    invoke-direct {v0, p0}, Lbyv;-><init>(Lbyr$d;)V

    iput-object v0, p0, Lbyr$d;->a:Lbyr$a;

    new-instance v0, Lbyw;

    invoke-direct {v0, p0}, Lbyw;-><init>(Lbyr$d;)V

    iput-object v0, p0, Lbyr$d;->b:Lbyr$a;

    new-instance v0, Lbyx;

    invoke-direct {v0, p0}, Lbyx;-><init>(Lbyr$d;)V

    iput-object v0, p0, Lbyr$d;->c:Lbyr$a;

    return-void
.end method

.method synthetic constructor <init>(Lbyr;B)V
    .locals 0

    invoke-direct {p0, p1}, Lbyr$d;-><init>(Lbyr;)V

    return-void
.end method

.method static synthetic a(Lbyr$d;)Lbyr;
    .locals 1

    iget-object v0, p0, Lbyr$d;->d:Lbyr;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lbyr$d;->d:Lbyr;

    invoke-static {v1}, Lbyr;->b(Lbyr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbyr$d;->d:Lbyr;

    invoke-static {v0}, Lbyr;->b(Lbyr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_0

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbyr$d;->a:Lbyr$a;

    new-instance v2, Lbyy;

    invoke-direct {v2, p0, v1, v0}, Lbyy;-><init>(Lbyr$d;Lbyr$a;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbyy;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbyr$d;->b:Lbyr$a;

    new-instance v2, Lbyy;

    invoke-direct {v2, p0, v1, v0}, Lbyy;-><init>(Lbyr$d;Lbyr$a;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbyy;->start()V

    goto :goto_1

    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbyr$d;->c:Lbyr$a;

    new-instance v2, Lbyy;

    invoke-direct {v2, p0, v1, v0}, Lbyy;-><init>(Lbyr$d;Lbyr$a;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbyy;->start()V

    goto :goto_1
.end method
