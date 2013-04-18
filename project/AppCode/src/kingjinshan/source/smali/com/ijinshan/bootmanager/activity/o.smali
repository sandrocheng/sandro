.class final Lcom/ijinshan/bootmanager/activity/o;
.super Ljava/lang/Thread;
.source "AutoBootMangerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1106
    iput-object p2, p0, Lcom/ijinshan/bootmanager/activity/o;->b:Landroid/os/Handler;

    .line 1107
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/o;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/o;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1111
    const/4 v0, 0x0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageSizeInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/pm/IPackageStatsObserver;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v2, v7

    .line 1122
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 1125
    :try_start_1
    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/ijinshan/bootmanager/activity/p;

    invoke-direct {v6, p0, v0}, Lcom/ijinshan/bootmanager/activity/p;-><init>(Lcom/ijinshan/bootmanager/activity/o;Lcom/ijinshan/bootmanager/b/a;)V

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1122
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1117
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 1143
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    move v2, v7

    .line 1147
    :goto_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 1150
    :try_start_2
    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/o;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/ijinshan/bootmanager/activity/q;

    invoke-direct {v6, p0, v0}, Lcom/ijinshan/bootmanager/activity/q;-><init>(Lcom/ijinshan/bootmanager/activity/o;Lcom/ijinshan/bootmanager/b/a;)V

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1147
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1168
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1173
    :cond_1
    return-void
.end method
