.class final Lcom/hoi/netstat/d;
.super Ljava/lang/Object;
.source "NetStatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/hoi/netstat/NetStatActivity;


# direct methods
.method constructor <init>(Lcom/hoi/netstat/NetStatActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/hoi/netstat/d;->b:Lcom/hoi/netstat/NetStatActivity;

    iput-object p2, p0, Lcom/hoi/netstat/d;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/hoi/netstat/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hoi/netstat/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/hoi/netstat/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hoi/netstat/NetStatActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v0, Lcom/hoi/netstat/e;->b:Lcom/hoi/netstat/NetStatActivity;

    invoke-static {v0}, Lcom/hoi/netstat/NetStatActivity;->a(Lcom/hoi/netstat/NetStatActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hoi/netstat/NetStatActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/hoi/netstat/d;->b:Lcom/hoi/netstat/NetStatActivity;

    invoke-static {v0}, Lcom/hoi/netstat/NetStatActivity;->a(Lcom/hoi/netstat/NetStatActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
