.class final Lup;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    iput-object p1, p0, Lup;->a:Luo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lup;->a:Luo;

    invoke-static {v0}, Luo;->a(Luo;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    return-void
.end method
