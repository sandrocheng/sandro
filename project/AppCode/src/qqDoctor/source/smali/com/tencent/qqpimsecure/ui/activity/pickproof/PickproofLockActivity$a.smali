.class final Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    iget-boolean v0, v0, Lho;->b:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->g(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    iget-boolean v0, v0, Lho;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    iput-boolean v1, v0, Lho;->b:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->finish()V

    goto :goto_0
.end method
