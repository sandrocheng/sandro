.class final Lbio;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldv",
        "<",
        "Llf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lbig;


# direct methods
.method constructor <init>(Lbig;)V
    .locals 0

    iput-object p1, p0, Lbio;->a:Lbig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Llf;

    iget-object v0, p0, Lbio;->a:Lbig;

    invoke-static {v0}, Lbig;->b(Lbig;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbio;->a:Lbig;

    invoke-static {v1}, Lbig;->b(Lbig;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
