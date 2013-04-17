.class final Lws;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lwr;


# direct methods
.method constructor <init>(Lwr;)V
    .locals 0

    iput-object p1, p0, Lws;->a:Lwr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lws;->a:Lwr;

    invoke-static {v0}, Lwr;->a(Lwr;)V

    :cond_0
    return-void
.end method
