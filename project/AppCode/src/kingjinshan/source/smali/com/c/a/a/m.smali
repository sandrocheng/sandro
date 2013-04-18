.class final Lcom/c/a/a/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/c/a/a/d;


# direct methods
.method constructor <init>(Lcom/c/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;I)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;I)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;I)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    iget-object v1, p0, Lcom/c/a/a/m;->a:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a/d;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
