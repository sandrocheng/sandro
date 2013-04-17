.class final Lbcy;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbcx;


# direct methods
.method constructor <init>(Lbcx;)V
    .locals 0

    iput-object p1, p0, Lbcy;->a:Lbcx;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbcy;->a:Lbcx;

    iget-object v0, v0, Lbcx;->a:Lbcu;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    invoke-static {v0, v1}, Lbcu;->a(Lbcu;I)I

    iget-object v0, p0, Lbcy;->a:Lbcx;

    iget-object v0, v0, Lbcx;->a:Lbcu;

    invoke-static {v0}, Lbcu;->c(Lbcu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
