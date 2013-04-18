.class final Lcom/ijinshan/bootmanager/activity/m;
.super Ljava/lang/Thread;
.source "AutoBootMangerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/l;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/l;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/l;->a(Lcom/ijinshan/bootmanager/activity/l;)Lcom/ijinshan/bootmanager/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/l;->a(Lcom/ijinshan/bootmanager/activity/l;)Lcom/ijinshan/bootmanager/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 458
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/l;->a(Lcom/ijinshan/bootmanager/activity/l;)Lcom/ijinshan/bootmanager/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/m;->a:Lcom/ijinshan/bootmanager/activity/l;

    iget-object v1, v1, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    .line 461
    return-void
.end method
