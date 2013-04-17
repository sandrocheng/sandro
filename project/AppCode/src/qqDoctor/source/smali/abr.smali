.class final Labr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Labp;


# direct methods
.method constructor <init>(Labp;)V
    .locals 0

    iput-object p1, p0, Labr;->a:Labp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Labr;->a:Labp;

    invoke-static {v0}, Labp;->e(Labp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labr;->a:Labp;

    invoke-static {v0}, Labp;->f(Labp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labr;->a:Labp;

    invoke-static {v0}, Labp;->f(Labp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
