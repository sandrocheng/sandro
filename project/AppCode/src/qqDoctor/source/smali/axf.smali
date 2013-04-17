.class final Laxf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Laxe;


# direct methods
.method constructor <init>(Laxe;)V
    .locals 0

    iput-object p1, p0, Laxf;->a:Laxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Laxf;->a:Laxe;

    invoke-static {v0}, Laxe;->a(Laxe;)Z

    iget-object v0, p0, Laxf;->a:Laxe;

    invoke-static {v0}, Laxe;->b(Laxe;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laxf;->a:Laxe;

    invoke-static {v0}, Laxe;->c(Laxe;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method
