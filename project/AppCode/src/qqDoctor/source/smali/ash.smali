.class final Lash;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lasg;


# direct methods
.method constructor <init>(Lasg;)V
    .locals 0

    iput-object p1, p0, Lash;->a:Lasg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lash;->a:Lasg;

    iget-object v0, v0, Lasg;->a:Llj;

    invoke-static {v0}, Lfi;->b(Llj;)V

    iget-object v0, p0, Lash;->a:Lasg;

    iget-object v0, v0, Lasg;->b:Larz;

    iget-object v0, v0, Larz;->g:Ljava/util/List;

    iget-object v1, p0, Lash;->a:Lasg;

    iget-object v1, v1, Lasg;->a:Llj;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lash;->a:Lasg;

    iget-object v0, v0, Lasg;->b:Larz;

    invoke-static {v0}, Larz;->q(Larz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
