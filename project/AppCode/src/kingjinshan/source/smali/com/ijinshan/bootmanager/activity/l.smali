.class final Lcom/ijinshan/bootmanager/activity/l;
.super Ljava/lang/Object;
.source "AutoBootMangerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

.field private b:Ljava/lang/String;

.field private c:Lcom/ijinshan/bootmanager/b/a;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lcom/ijinshan/bootmanager/activity/l;->b:Ljava/lang/String;

    .line 437
    iput-object p3, p0, Lcom/ijinshan/bootmanager/activity/l;->c:Lcom/ijinshan/bootmanager/b/a;

    .line 438
    iput-object p4, p0, Lcom/ijinshan/bootmanager/activity/l;->d:Landroid/widget/CheckBox;

    .line 439
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/l;)Lcom/ijinshan/bootmanager/b/a;
    .locals 1
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/l;->c:Lcom/ijinshan/bootmanager/b/a;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 443
    const-string v0, "ROOT_REQUEST"

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/l;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->z()V

    .line 446
    :cond_0
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 447
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v3, 0x3fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    const-string v0, "SECRET_PRO_TYPE"

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BATTERY_DOC_TYPE"

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DUBA_DOC_TYPE"

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/l;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    .line 454
    new-instance v0, Lcom/ijinshan/bootmanager/activity/m;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/activity/m;-><init>(Lcom/ijinshan/bootmanager/activity/l;)V

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/m;->start()V

    goto :goto_0
.end method
