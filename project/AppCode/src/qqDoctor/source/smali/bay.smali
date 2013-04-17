.class final Lbay;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbax;


# direct methods
.method constructor <init>(Lbax;)V
    .locals 0

    iput-object p1, p0, Lbay;->a:Lbax;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbay;->a:Lbax;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    invoke-static {v0, v1}, Lbax;->a(Lbax;I)I

    iget-object v0, p0, Lbay;->a:Lbax;

    invoke-static {v0}, Lbax;->a(Lbax;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
