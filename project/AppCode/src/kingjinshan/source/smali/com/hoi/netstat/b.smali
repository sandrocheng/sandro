.class final Lcom/hoi/netstat/b;
.super Landroid/os/Handler;
.source "NetStatActivity.java"


# instance fields
.field final synthetic a:Lcom/hoi/netstat/NetStatActivity;


# direct methods
.method constructor <init>(Lcom/hoi/netstat/NetStatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hoi/netstat/b;->a:Lcom/hoi/netstat/NetStatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hoi/netstat/b;->a:Lcom/hoi/netstat/NetStatActivity;

    invoke-static {}, Lcom/hoi/netstat/NetStatActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method
