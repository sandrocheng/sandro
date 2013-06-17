.class Lcom/avg/tuneup/battery/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/battery/r;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/r;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/s;->a:Lcom/avg/tuneup/battery/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/avg/tuneup/battery/s;->a:Lcom/avg/tuneup/battery/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/avg/tuneup/battery/r;->a(Lcom/avg/tuneup/battery/r;Landroid/content/Intent;)V

    return-void
.end method
