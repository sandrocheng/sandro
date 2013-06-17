.class Lcom/avg/ui/general/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/a/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/a/b;->a:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/general/a/b;->a:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avg/ui/general/a/a;->t:Z

    iget-object v1, p0, Lcom/avg/ui/general/a/b;->a:Lcom/avg/ui/general/a/a;

    move-object v0, p2

    check-cast v0, Lcom/avg/toolkit/h;

    invoke-interface {v0}, Lcom/avg/toolkit/h;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iput-object v0, v1, Lcom/avg/ui/general/a/a;->u:Lcom/avg/toolkit/e/a;

    iget-object v0, p0, Lcom/avg/ui/general/a/b;->a:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/avg/ui/general/a/a;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "Disconnected"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    return-void
.end method
