.class public final Lcy;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/uilib/ExpectTimeView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/uilib/ExpectTimeView;)V
    .locals 0

    iput-object p1, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->a(Lcom/tencent/powermanager/uilib/ExpectTimeView;)V

    iget-object v0, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iget-object v1, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setTextHour(I)V

    iget-object v0, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iget-object v1, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setTextMin(I)V

    iget-object v0, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I

    move-result v0

    iget-object v1, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->d(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I

    move-result v0

    iget-object v1, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->e(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcy;->a:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->f(Lcom/tencent/powermanager/uilib/ExpectTimeView;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x10001

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
