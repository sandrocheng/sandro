.class final Lbca;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbbz;


# direct methods
.method constructor <init>(Lbbz;)V
    .locals 0

    iput-object p1, p0, Lbca;->a:Lbbz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbca;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    iput v1, v0, Lbby;->a:I

    iget-object v0, p0, Lbca;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->a(Lbby;)Z

    iget-object v0, p0, Lbca;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->b(Lbby;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
