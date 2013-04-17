.class final Lsj;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lsi;


# direct methods
.method constructor <init>(Lsi;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lsj;->a:Lsi;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lsj;->a:Lsi;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llu;

    invoke-virtual {v1, v0}, Lsi;->b(Llu;)V

    return-void
.end method
