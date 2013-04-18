.class final Lcom/ijinshan/bootmanager/activity/p;
.super Landroid/content/pm/e;
.source "AutoBootMangerActivity.java"


# instance fields
.field final synthetic b:Lcom/ijinshan/bootmanager/b/a;

.field final synthetic c:Lcom/ijinshan/bootmanager/activity/o;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/o;Lcom/ijinshan/bootmanager/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/p;->c:Lcom/ijinshan/bootmanager/activity/o;

    iput-object p2, p0, Lcom/ijinshan/bootmanager/activity/p;->b:Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {p0}, Landroid/content/pm/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1131
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1132
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1133
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/p;->b:Lcom/ijinshan/bootmanager/b/a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1135
    const-string v2, "package_size"

    iget-wide v3, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v5, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1138
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1139
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/p;->c:Lcom/ijinshan/bootmanager/activity/o;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/o;->a(Lcom/ijinshan/bootmanager/activity/o;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1141
    return-void
.end method
