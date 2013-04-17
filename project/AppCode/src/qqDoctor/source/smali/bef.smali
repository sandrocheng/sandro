.class final Lbef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbed;


# direct methods
.method constructor <init>(Lbed;)V
    .locals 0

    iput-object p1, p0, Lbef;->a:Lbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbef;->a:Lbed;

    invoke-virtual {v0}, Lbed;->loadDataList()V

    iget-object v0, p0, Lbef;->a:Lbed;

    invoke-static {v0}, Lbed;->c(Lbed;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
