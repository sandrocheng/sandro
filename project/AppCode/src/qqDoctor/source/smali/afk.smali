.class public final Lafk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LQQPIM/CloudInfo;

.field private synthetic b:LQQPIM/CloudCmd;

.field private synthetic c:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudInfo;LQQPIM/CloudCmd;)V
    .locals 0

    iput-object p1, p0, Lafk;->c:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iput-object p2, p0, Lafk;->a:LQQPIM/CloudInfo;

    iput-object p3, p0, Lafk;->b:LQQPIM/CloudCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lafk;->c:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Lqr;

    move-result-object v0

    iget-object v1, p0, Lafk;->a:LQQPIM/CloudInfo;

    iget-object v2, p0, Lafk;->b:LQQPIM/CloudCmd;

    invoke-virtual {v0, v1, v2}, Lqr;->a(LQQPIM/CloudInfo;LQQPIM/CloudCmd;)I

    move-result v0

    iget-object v1, p0, Lafk;->c:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iget-object v2, p0, Lafk;->b:LQQPIM/CloudCmd;

    invoke-static {v1, v0, v2}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;ILQQPIM/CloudCmd;)V

    iget-object v0, p0, Lafk;->c:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->h(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)I

    iget-object v0, p0, Lafk;->c:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
