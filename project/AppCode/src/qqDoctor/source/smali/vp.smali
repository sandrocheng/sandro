.class final Lvp;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Llf;

.field private synthetic b:Lvk;


# direct methods
.method constructor <init>(Lvk;Llf;)V
    .locals 0

    iput-object p1, p0, Lvp;->b:Lvk;

    iput-object p2, p0, Lvp;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v1, p0, Lvp;->b:Lvk;

    iget-object v2, p0, Lvp;->a:Llf;

    iget-object v0, v1, Lvk;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lvt;

    invoke-direct {v3, v1, v2}, Lvt;-><init>(Lvk;Llf;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
