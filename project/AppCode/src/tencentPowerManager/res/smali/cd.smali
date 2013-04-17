.class final Lcd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcc;


# direct methods
.method constructor <init>(Lcc;)V
    .locals 0

    iput-object p1, p0, Lcd;->a:Lcc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcd;->a:Lcc;

    invoke-static {v0}, Lcc;->a(Lcc;)V

    return-void
.end method
