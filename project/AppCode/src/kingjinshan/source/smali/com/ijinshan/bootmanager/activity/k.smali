.class final Lcom/ijinshan/bootmanager/activity/k;
.super Ljava/lang/Thread;
.source "AutoBootMangerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/j;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/j;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/k;->a:Lcom/ijinshan/bootmanager/activity/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/k;->a:Lcom/ijinshan/bootmanager/activity/j;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 647
    const-string v2, "com.ijinshan.mguard"

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ijinshan.duba"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ijinshan.mPrivacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/k;->a:Lcom/ijinshan/bootmanager/activity/j;

    iget-object v2, v2, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v2, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/b/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 658
    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/k;->a:Lcom/ijinshan/bootmanager/activity/j;

    iget-object v2, v2, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/k;->a:Lcom/ijinshan/bootmanager/activity/j;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/k;->a:Lcom/ijinshan/bootmanager/activity/j;

    iget-object v1, v1, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    .line 662
    return-void
.end method
