.class final Lcom/ijinshan/bootmanager/activity/j;
.super Ljava/lang/Object;
.source "AutoBootMangerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 632
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->A(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    .line 633
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    if-ne v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->finish()V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->a:Lcom/ijinshan/bootmanager/activity/i;

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->B(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b058b

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    .line 643
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-instance v1, Lcom/ijinshan/bootmanager/activity/k;

    invoke-direct {v1, p0}, Lcom/ijinshan/bootmanager/activity/k;-><init>(Lcom/ijinshan/bootmanager/activity/j;)V

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 664
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/j;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->C(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
