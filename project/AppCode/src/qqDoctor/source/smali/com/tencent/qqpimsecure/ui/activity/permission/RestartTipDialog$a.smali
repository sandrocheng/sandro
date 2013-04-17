.class public final Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lxg;->a:Lxg$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lxg$a;->a:Z

    :cond_0
    :goto_0
    sget-object v1, Lxg;->a:Lxg$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lxg;->a:Lxg$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lxg;->a:Lxg$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lxg$a;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
