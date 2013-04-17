.class final Laut;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:I

.field private synthetic b:Latz;


# direct methods
.method constructor <init>(Latz;I)V
    .locals 0

    iput-object p1, p0, Laut;->b:Latz;

    iput p2, p0, Laut;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Laut;->b:Latz;

    invoke-static {v0}, Latz;->w(Latz;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Laut;->b:Latz;

    invoke-static {v0}, Latz;->x(Latz;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbb9

    iget v2, p0, Laut;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laut;->b:Latz;

    invoke-static {v1}, Latz;->y(Latz;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Laut;->b:Latz;

    invoke-static {v0}, Latz;->z(Latz;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method
