.class final Lav;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lat;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lav;->a:Lat;

    iput-object p2, p0, Lav;->b:Ljava/lang/String;

    iput-object p3, p0, Lav;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lav;->a:Lat;

    iget-object v0, v0, Lat;->c:Lcd;

    iget-object v1, p0, Lav;->b:Ljava/lang/String;

    iget-object v2, p0, Lav;->c:Ljava/lang/String;

    invoke-static {v2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcd;->a(Ljava/lang/String;[B)I

    move-result v0

    const-string v1, "Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pimpwd  return value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lav;->a:Lat;

    iget-object v1, v1, Lat;->e:Landroid/os/Handler;

    const/16 v2, 0x2004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lav;->a:Lat;

    iget-object v1, v1, Lat;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
