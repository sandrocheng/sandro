.class abstract Lcom/hoi/netstat/e;
.super Ljava/lang/Object;
.source "NetStatActivity.java"


# instance fields
.field final synthetic b:Lcom/hoi/netstat/NetStatActivity;


# direct methods
.method synthetic constructor <init>(Lcom/hoi/netstat/NetStatActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/netstat/e;-><init>(Lcom/hoi/netstat/NetStatActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/hoi/netstat/NetStatActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/hoi/netstat/e;->b:Lcom/hoi/netstat/NetStatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/hoi/netstat/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hoi/netstat/NetStatActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/hoi/netstat/e;->b:Lcom/hoi/netstat/NetStatActivity;

    invoke-static {v0}, Lcom/hoi/netstat/NetStatActivity;->a(Lcom/hoi/netstat/NetStatActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
