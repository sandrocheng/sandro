.class final Lbqb$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lbqb;


# direct methods
.method private constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqb$a;->a:Lbqb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbqb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lbqb$a;-><init>(Lbqb;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->S(Lbqb;)I

    move-result v0

    iget-object v1, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v1}, Lbqb;->T(Lbqb;)V

    iget-object v1, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v1}, Lbqb;->S(Lbqb;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->U(Lbqb;)V

    :cond_1
    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->V(Lbqb;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->X(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v2}, Lbqb;->W(Lbqb;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->changeBMW(II)V

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->c(Lbqb;)Lbqb$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->c(Lbqb;)Lbqb$a;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lbqb$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->U(Lbqb;)V

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->V(Lbqb;)V

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->Y(Lbqb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->Z(Lbqb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbqb$a;->a:Lbqb;

    invoke-static {v0}, Lbqb;->J(Lbqb;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
