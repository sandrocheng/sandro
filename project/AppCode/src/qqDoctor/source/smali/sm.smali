.class final Lsm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Llv;


# direct methods
.method constructor <init>(Llv;)V
    .locals 0

    iput-object p1, p0, Lsm;->a:Llv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lsm;->a:Llv;

    iget-object v0, v0, Lmp;->i:Labu$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm;->a:Llv;

    iget-object v0, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lsm;->a:Llv;

    invoke-interface {v0, v1}, Labu$a;->onTaskFinish(Lmp;)V

    :cond_0
    return-void
.end method