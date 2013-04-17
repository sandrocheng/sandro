.class final Lat$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lat;


# direct methods
.method private constructor <init>(Lat;)V
    .locals 0

    iput-object p1, p0, Lat$a;->a:Lat;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat;B)V
    .locals 0

    invoke-direct {p0, p1}, Lat$a;-><init>(Lat;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lat$a;->a:Lat;

    iget-object v0, p0, Lat$a;->a:Lat;

    iget-object v0, v0, Lat;->c:Lcd;

    iget-object v1, p0, Lat$a;->a:Lat;

    iget-object v1, v1, Lat;->a:Ljava/lang/String;

    iget-object v2, p0, Lat$a;->a:Lat;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcd;->b(Ljava/lang/String;[B)I

    move-result v0

    const-string v1, "Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoginThread run return value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lat$a;->a:Lat;

    iget-object v1, v1, Lat;->e:Landroid/os/Handler;

    const/16 v2, 0x2001

    invoke-virtual {v1, v2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lat$a;->a:Lat;

    iget-object v1, v1, Lat;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
