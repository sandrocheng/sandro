.class public final Lafj;
.super Ljava/lang/Object;

# interfaces
.implements Lpe$a;


# instance fields
.field private synthetic a:LQQPIM/CloudCmd;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudCmd;)V
    .locals 0

    iput-object p1, p0, Lafj;->b:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iput-object p2, p0, Lafj;->a:LQQPIM/CloudCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lafj;->b:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iget-object v1, p0, Lafj;->a:LQQPIM/CloudCmd;

    invoke-static {v0, p1, v1}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;ILQQPIM/CloudCmd;)V

    iget-object v0, p0, Lafj;->b:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->h(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)I

    iget-object v0, p0, Lafj;->b:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
