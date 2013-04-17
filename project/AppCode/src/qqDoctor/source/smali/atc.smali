.class final Latc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Latb;


# direct methods
.method constructor <init>(Latb;I)V
    .locals 0

    iput-object p1, p0, Latc;->b:Latb;

    iput p2, p0, Latc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v0, p0, Latc;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Latc;->b:Latb;

    iget-object v0, v0, Latb;->d:Lib;

    const-string v1, "file_safe_file_info"

    const-string v2, "mFileState=?"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "id ASC"

    invoke-virtual {v0, v1, v2, v3, v4}, Lib;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lfi;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Latc;->b:Latb;

    invoke-static {v0}, Latb;->a(Latb;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    iget v2, p0, Latc;->a:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Latc;->b:Latb;

    invoke-static {v1}, Latb;->b(Latb;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
